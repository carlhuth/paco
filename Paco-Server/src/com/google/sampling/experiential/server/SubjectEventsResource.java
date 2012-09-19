// Copyright 2012 Google Inc. All Rights Reserved.

package com.google.sampling.experiential.server;

import com.google.paco.shared.model.Event;

import org.restlet.data.Status;
import org.restlet.resource.Get;
import org.restlet.resource.Post;
import org.restlet.resource.ResourceException;

import java.util.List;

/**
 * @author corycornelius@google.com (Cory Cornelius)
 *
 */
public class SubjectEventsResource extends PacoExperimentResource {
  @Override
  protected void doInit() throws ResourceException {
    super.doInit();

    if (experiment.hasSubject(user) == false) {
      throw new ResourceException(Status.CLIENT_ERROR_FORBIDDEN);
    }
  }

  @Get("json")
  public List<Event> summary() {
    return dao.getEvents(experiment, user);
  }

  @Post("json")
  public void add(Event event) {
    if (event == null) {
      throw new ResourceException(Status.CLIENT_ERROR_BAD_REQUEST);
    }

    Long id = dao.createEvent(event, experiment, user);

    if (id != null) {
      // FIXME: Should set location to upload url if experiment contain's a blob
      setStatus(Status.SUCCESS_CREATED);
      setLocationRef("/subject/experiment/" + experiment.getId() + "/events/" + id);
    } else {
      setStatus(Status.SERVER_ERROR_INTERNAL);
    }
  }
}