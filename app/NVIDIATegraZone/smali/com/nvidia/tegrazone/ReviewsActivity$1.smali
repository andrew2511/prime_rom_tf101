.class final Lcom/nvidia/tegrazone/ReviewsActivity$1;
.super Ljava/lang/Object;
.source "ReviewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/ReviewsActivity;->initMasthead()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/ReviewsActivity;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/ReviewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/ReviewsActivity$1;->this$0:Lcom/nvidia/tegrazone/ReviewsActivity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nvidia/tegrazone/ReviewsActivity$1;->this$0:Lcom/nvidia/tegrazone/ReviewsActivity;

    invoke-static {v0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    .line 82
    return-void
.end method
