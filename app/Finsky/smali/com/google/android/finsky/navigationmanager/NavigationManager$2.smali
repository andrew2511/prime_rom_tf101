.class Lcom/google/android/finsky/navigationmanager/NavigationManager$2;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/navigationmanager/NavigationManager;->buyItem(Ljava/lang/String;Ljava/lang/String;I)V
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
        "Lcom/google/android/finsky/remoting/protos/DetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$cookie:Ljava/lang/String;

.field final synthetic val$offerType:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/navigationmanager/NavigationManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$cookie:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$offerType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/DetailsResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 523
    new-instance v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$cookie:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/api/model/Document;-><init>(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;Ljava/lang/String;)V

    .line 525
    .local v0, doc:Lcom/google/android/finsky/api/model/Document;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v1

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-static {v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->access$000(Lcom/google/android/finsky/navigationmanager/NavigationManager;)Lcom/google/android/finsky/activities/MainActivity;

    move-result-object v2

    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/activities/MainActivity;->showErrorDialog(Ljava/lang/String;Z)V

    .line 535
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->showDetails(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V

    .line 534
    iget-object v1, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->this$0:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget v2, p0, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->val$offerType:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->buyItem(Lcom/google/android/finsky/api/model/Document;I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 520
    check-cast p1, Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/navigationmanager/NavigationManager$2;->onResponse(Lcom/google/android/finsky/remoting/protos/DetailsResponse;)V

    return-void
.end method
