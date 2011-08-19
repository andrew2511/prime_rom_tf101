.class Lcom/layar/SocialActionActivity$1$1;
.super Ljava/lang/Object;
.source "SocialActionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/SocialActionActivity$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/layar/SocialActionActivity$1;


# direct methods
.method constructor <init>(Lcom/layar/SocialActionActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/SocialActionActivity$1$1;->this$1:Lcom/layar/SocialActionActivity$1;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/layar/SocialActionActivity$1$1;->this$1:Lcom/layar/SocialActionActivity$1;

    invoke-static {v0}, Lcom/layar/SocialActionActivity$1;->access$0(Lcom/layar/SocialActionActivity$1;)Lcom/layar/SocialActionActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/SocialActionActivity;->access$3(Lcom/layar/SocialActionActivity;)V

    .line 149
    return-void
.end method
