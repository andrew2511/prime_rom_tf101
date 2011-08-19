.class public Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AWSBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;
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

.field final synthetic this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;


# direct methods
.method protected constructor <init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method setStar(Landroid/widget/ImageView;)V
    .locals 3
    .parameter "star"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    .line 169
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    new-instance v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;

    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;->this$0:Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;

    invoke-direct {v1, v2, p0}, Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$AddListener;-><init>(Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter;Lcom/ecareme/pixwe/view/navigate/AWSBrowserAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method
