.class Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailSyncObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailEngineSyncObserver"
.end annotation


# instance fields
.field private mNumMessages:I

.field private mNumOperations:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5929
    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumMessages:I

    .line 5930
    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumOperations:I

    .line 5931
    return-void
.end method


# virtual methods
.method public changesReceived()Z
    .locals 1

    .prologue
    .line 5942
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumMessages:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumOperations:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessageReceived()V
    .locals 1

    .prologue
    .line 5934
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumMessages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumMessages:I

    .line 5935
    return-void
.end method

.method public onOperationReceived()V
    .locals 1

    .prologue
    .line 5938
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->mNumOperations:I

    .line 5939
    return-void
.end method
