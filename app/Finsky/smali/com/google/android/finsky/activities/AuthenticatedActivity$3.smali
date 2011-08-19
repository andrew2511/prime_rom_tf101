.class Lcom/google/android/finsky/activities/AuthenticatedActivity$3;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->requestToc(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

.field final synthetic val$shouldHandleIntent:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 475
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iput-boolean p2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->val$shouldHandleIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 478
    new-instance v0, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    .line 479
    .local v0, newToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 480
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->onTocLoaded(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 482
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->isExtraInitializationNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;->getTosContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$000(Lcom/google/android/finsky/activities/AuthenticatedActivity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    iget-boolean v2, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->val$shouldHandleIntent:Z

    invoke-static {v1, v2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->access$100(Lcom/google/android/finsky/activities/AuthenticatedActivity;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 475
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/AuthenticatedActivity$3;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method
