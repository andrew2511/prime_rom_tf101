.class Lcom/asus/DLNA/DLNA$9;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$9;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 506
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$9;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$9;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$300(Lcom/asus/DLNA/DLNA;)I

    move-result v1

    iget-object v2, p0, Lcom/asus/DLNA/DLNA$9;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$400(Lcom/asus/DLNA/DLNA;)I

    move-result v2

    iget-object v3, p0, Lcom/asus/DLNA/DLNA$9;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$500(Lcom/asus/DLNA/DLNA;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/DLNA/MediaControl;->restoreMusicPlaying(III)V

    .line 507
    return-void
.end method
