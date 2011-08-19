.class Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;
.super Ljava/lang/Object;
.source "ListableBookSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/ListableBookSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableBook"
.end annotation


# instance fields
.field public book:Lcom/amazon/kcp/library/models/IListableBook;

.field public index:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/internal/ListableBookSorter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;-><init>()V

    return-void
.end method
