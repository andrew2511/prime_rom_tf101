.class Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;
.super Ljava/lang/Object;
.source "ExtraHeaderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/book/ExtraHeaderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TExtraHeaderData"
.end annotation


# instance fields
.field public hsize:I

.field public magic:I

.field public nb_data:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/book/ExtraHeaderData$TExtraHeaderData;-><init>()V

    return-void
.end method
