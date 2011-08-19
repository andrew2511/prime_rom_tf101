.class public final Lcom/ecareme/pixwe/media/PopupMenu$Option;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Option"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private mBottom:I

.field private mDrawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "title"
    .parameter "icon"
    .parameter "action"

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mDrawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;

    .line 284
    iput-object p1, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mTitle:Ljava/lang/String;

    .line 285
    iput-object p2, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 286
    iput-object p3, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mAction:Ljava/lang/Runnable;

    .line 287
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Lcom/ecareme/pixwe/media/IconTitleDrawable;
    .locals 1
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mDrawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/PopupMenu$Option;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/PopupMenu$Option;Lcom/ecareme/pixwe/media/IconTitleDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mDrawable:Lcom/ecareme/pixwe/media/IconTitleDrawable;

    return-void
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/media/PopupMenu$Option;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 281
    iput p1, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mBottom:I

    return-void
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/PopupMenu$Option;)I
    .locals 1
    .parameter

    .prologue
    .line 281
    iget v0, p0, Lcom/ecareme/pixwe/media/PopupMenu$Option;->mBottom:I

    return v0
.end method
