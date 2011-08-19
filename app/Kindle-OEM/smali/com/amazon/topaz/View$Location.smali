.class public Lcom/amazon/topaz/View$Location;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public final location:I

.field public final pageNum:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "pageNum"
    .parameter "location"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p2, p0, Lcom/amazon/topaz/View$Location;->location:I

    .line 36
    iput p1, p0, Lcom/amazon/topaz/View$Location;->pageNum:I

    .line 37
    return-void
.end method
