.class Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PoiActionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/PoiActionsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field action:Lcom/layar/data/PoiAction;

.field icon:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/layar/adapters/PoiActionsAdapter$ViewHolder;-><init>()V

    return-void
.end method
