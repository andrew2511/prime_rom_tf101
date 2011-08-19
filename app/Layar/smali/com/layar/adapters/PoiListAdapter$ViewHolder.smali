.class Lcom/layar/adapters/PoiListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PoiListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/PoiListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field attribution:Landroid/widget/TextView;

.field details:Landroid/view/ViewGroup;

.field distance:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field launchArea:Landroid/view/ViewGroup;

.field line2:Landroid/widget/TextView;

.field line3:Landroid/widget/TextView;

.field line4:Landroid/widget/TextView;

.field poi:Lcom/layar/data/POI;

.field progress:Landroid/widget/ProgressBar;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/adapters/PoiListAdapter$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/layar/adapters/PoiListAdapter$ViewHolder;-><init>()V

    return-void
.end method
