.class Lcom/google/android/finsky/activities/AuthenticatedActivity$4;
.super Ljava/lang/Object;
.source "AuthenticatedActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/AuthenticatedActivity;->requestToc(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/AuthenticatedActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 1
    .parameter "error"
    .parameter "message"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/finsky/activities/AuthenticatedActivity$4;->this$0:Lcom/google/android/finsky/activities/AuthenticatedActivity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/activities/AuthenticatedActivity;->handleAuthenticationError(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    .line 493
    return-void
.end method
