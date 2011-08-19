.class public Ltwitter4j/StatusAdapter;
.super Ljava/lang/Object;
.source "StatusAdapter.java"

# interfaces
.implements Ltwitter4j/StatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionNotice(Ltwitter4j/StatusDeletionNotice;)V
    .locals 0
    .parameter "statusDeletionNotice"

    .prologue
    .line 37
    return-void
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "ex"

    .prologue
    .line 43
    return-void
.end method

.method public onScrubGeo(IJ)V
    .locals 0
    .parameter "userId"
    .parameter "upToStatusId"

    .prologue
    .line 41
    return-void
.end method

.method public onStatus(Ltwitter4j/Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 35
    return-void
.end method

.method public onTrackLimitationNotice(I)V
    .locals 0
    .parameter "numberOfLimitedStatuses"

    .prologue
    .line 39
    return-void
.end method
