.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;
.super Ljava/lang/Object;
.source "GTalkConnection.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 238
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$100(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Z

    move-result v1

    .line 239
    .local v1, oldShowMobileIndicator:Z
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$200(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)I

    move-result v0

    .line 240
    .local v0, oldCapabilities:I
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$400(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$300(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowMobileIndicator(Landroid/content/Context;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$102(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Z)Z

    .line 241
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$400(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$202(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)I

    .line 242
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$100(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Z

    move-result v4

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$200(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 244
    :cond_0
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v5, "show mobile indicator or caps setting changed"

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v3

    .line 246
    .local v3, session:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    .line 248
    .local v2, presence:Lcom/google/android/gtalkservice/Presence;
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$200(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 249
    invoke-virtual {v3, v2}, Lcom/google/android/gsf/gtalkservice/ImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 250
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendPresenceCapability()V

    .line 252
    .end local v2           #presence:Lcom/google/android/gtalkservice/Presence;
    .end local v3           #session:Lcom/google/android/gsf/gtalkservice/ImSession;
    :cond_2
    return-void
.end method
