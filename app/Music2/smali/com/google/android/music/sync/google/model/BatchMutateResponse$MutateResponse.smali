.class public Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
.super Ljava/lang/Object;
.source "BatchMutateResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/model/BatchMutateResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutateResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse$ResponseCode;
    }
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "client_id"
    .end annotation
.end field

.field public mId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public mResponseCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "response_code"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method
