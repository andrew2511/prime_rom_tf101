.class public final Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;
.super Ljava/lang/Object;
.source "FilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/filemanager2/adapter/FilterAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IconListItem"
.end annotation


# instance fields
.field public icon:I

.field public msg:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "msg_id"
    .parameter "icon_id"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;->msg:I

    .line 27
    iput p2, p0, Lcom/asus/filemanager2/adapter/FilterAdapter$IconListItem;->icon:I

    .line 28
    return-void
.end method
