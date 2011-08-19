.class public Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;
.super Ljava/lang/Object;
.source "GalleryExpandableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/GalleryExpandableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabListItem"
.end annotation


# instance fields
.field public extrasBundle:Landroid/os/Bundle;

.field public icon:Landroid/graphics/Bitmap;

.field public iconId:I

.field public intentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public tag:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public titleId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Class;)V
    .locals 1
    .parameter "tag"
    .parameter "iconId"
    .parameter "titleId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p4, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->iconId:I

    .line 220
    iput v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->titleId:I

    .line 226
    iput-object p1, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->tag:Ljava/lang/String;

    .line 227
    iput p2, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->iconId:I

    .line 228
    iput p3, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->titleId:I

    .line 229
    iput-object p4, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->intentClass:Ljava/lang/Class;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .parameter "tag"
    .parameter "icon"
    .parameter "title"
    .parameter
    .parameter "extrasBundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, intentClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, -0x1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->iconId:I

    .line 220
    iput v0, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->titleId:I

    .line 233
    iput-object p1, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->tag:Ljava/lang/String;

    .line 234
    iput-object p2, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->icon:Landroid/graphics/Bitmap;

    .line 235
    iput-object p3, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->title:Ljava/lang/String;

    .line 236
    iput-object p4, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->intentClass:Ljava/lang/Class;

    .line 237
    iput-object p5, p0, Lcom/layar/adapters/GalleryExpandableAdapter$TabListItem;->extrasBundle:Landroid/os/Bundle;

    .line 238
    return-void
.end method
