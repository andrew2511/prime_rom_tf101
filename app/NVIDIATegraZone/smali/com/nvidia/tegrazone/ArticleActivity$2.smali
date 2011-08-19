.class final Lcom/nvidia/tegrazone/ArticleActivity$2;
.super Ljava/lang/Object;
.source "ArticleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/ArticleActivity;->initMasthead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/ArticleActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/ArticleActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/ArticleActivity$2;->this$0:Lcom/nvidia/tegrazone/ArticleActivity;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/nvidia/tegrazone/ArticleActivity$2;->this$0:Lcom/nvidia/tegrazone/ArticleActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    .line 363
    return-void
.end method
