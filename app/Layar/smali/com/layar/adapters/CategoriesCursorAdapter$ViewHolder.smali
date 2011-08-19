.class Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CategoriesCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/CategoriesCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field description:Landroid/widget/TextView;

.field image:Landroid/widget/ImageView;

.field loading:Landroid/widget/ProgressBar;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/layar/adapters/CategoriesCursorAdapter$ViewHolder;-><init>()V

    return-void
.end method
