.class interface abstract Lcom/google/android/apps/analytics/EventStore;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteEvent(J)V
.end method

.method public abstract getNumStoredEvents()I
.end method

.method public abstract getReferrer()Ljava/lang/String;
.end method

.method public abstract getStoreId()I
.end method

.method public abstract getVisitorCustomVar(I)Ljava/lang/String;
.end method

.method public abstract peekEvents()[Lcom/google/android/apps/analytics/Event;
.end method

.method public abstract peekEvents(I)[Lcom/google/android/apps/analytics/Event;
.end method

.method public abstract putEvent(Lcom/google/android/apps/analytics/Event;)V
.end method

.method public abstract setReferrer(Ljava/lang/String;)V
.end method

.method public abstract startNewVisit()V
.end method
