.class public interface abstract Lcom/google/protos/MobileappsExtensions$PlacesEventInfoOrBuilder;
.super Ljava/lang/Object;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlacesEventInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ActionType;
.end method

.method public abstract getCategory()Ljava/lang/String;
.end method

.method public abstract getCategoryBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getClientTimestampMsSinceEpoch()J
.end method

.method public abstract getConnectionType()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ConnectionType;
.end method

.method public abstract getCurrentView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
.end method

.method public abstract getDurationMs()I
.end method

.method public abstract getError()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ErrorType;
.end method

.method public abstract getHasJustification()Z
.end method

.method public abstract getHasNegativeJustification()Z
.end method

.method public abstract getHasPositiveJustification()Z
.end method

.method public abstract getIsLoggedIn()Z
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLanguageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLatSpanDegreesDeltaE6()I
.end method

.method public abstract getLocationAccuracyMeters()I
.end method

.method public abstract getLocationDeltaMeters()I
.end method

.method public abstract getLongSpanDegreesDeltaE6()I
.end method

.method public abstract getNextView()Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$ViewType;
.end method

.method public abstract getRating(I)Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;
.end method

.method public abstract getRatingCount()I
.end method

.method public abstract getRatingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$PlacesEventInfo$RatingType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResultPosition()I
.end method

.method public abstract getReviewSource()Ljava/lang/String;
.end method

.method public abstract getReviewSourceBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasCategory()Z
.end method

.method public abstract hasClientTimestampMsSinceEpoch()Z
.end method

.method public abstract hasConnectionType()Z
.end method

.method public abstract hasCurrentView()Z
.end method

.method public abstract hasDurationMs()Z
.end method

.method public abstract hasError()Z
.end method

.method public abstract hasHasJustification()Z
.end method

.method public abstract hasHasNegativeJustification()Z
.end method

.method public abstract hasHasPositiveJustification()Z
.end method

.method public abstract hasIsLoggedIn()Z
.end method

.method public abstract hasLanguage()Z
.end method

.method public abstract hasLatSpanDegreesDeltaE6()Z
.end method

.method public abstract hasLocationAccuracyMeters()Z
.end method

.method public abstract hasLocationDeltaMeters()Z
.end method

.method public abstract hasLongSpanDegreesDeltaE6()Z
.end method

.method public abstract hasNextView()Z
.end method

.method public abstract hasResultPosition()Z
.end method

.method public abstract hasReviewSource()Z
.end method
