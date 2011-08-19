.class public Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;
.super Ljava/lang/Object;
.source "BrowseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/BrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OfflineListener"
.end annotation


# instance fields
.field private holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;)V
    .locals 0
    .parameter
    .parameter "holder"

    .prologue
    .line 138
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;->this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p2, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;->holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;)Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;->holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 141
    sget-boolean v0, Lcom/ecareme/mear/Mear;->onlinemode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;->holder:Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;

    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->getStatus()Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    move-result-object v0

    sget-object v1, Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;->online:Lnet/yostore/aws/sqlite/entity/PlayList$STATUS;

    if-ne v0, v1, :cond_1

    .line 143
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$1;-><init>(Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;)V

    .line 161
    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$1;->start()V

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-boolean v0, Lcom/ecareme/mear/Mear;->onlinemode:Z

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$2;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$2;-><init>(Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener;)V

    .line 184
    invoke-virtual {v0}, Lnet/yostore/aws/view/navigate/BrowseAdapter$OfflineListener$2;->start()V

    goto :goto_0
.end method
