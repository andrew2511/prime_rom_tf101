.class public Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BrowseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/navigate/BrowseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field fid:Ljava/lang/String;

.field icon:Landroid/widget/ImageView;

.field isStarred:Z

.field kind:Ljava/lang/String;

.field position:I

.field size:Landroid/widget/TextView;

.field star:Landroid/widget/ImageView;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;


# direct methods
.method protected constructor <init>(Lnet/yostore/aws/view/navigate/BrowseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->this$0:Lnet/yostore/aws/view/navigate/BrowseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setStar(Landroid/widget/ImageView;)V
    .locals 0
    .parameter "star"

    .prologue
    .line 220
    iput-object p1, p0, Lnet/yostore/aws/view/navigate/BrowseAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    .line 231
    return-void
.end method
