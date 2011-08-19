.class Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;
.super Ljava/lang/Object;
.source "ListableBookSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/ListableBookSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SortableBookComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseComparator:Lcom/amazon/kcp/library/models/internal/BookComparator;


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/util/ILocalizedStringComparator;)V
    .locals 1
    .parameter "sortingType"
    .parameter "stringComparator"

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/amazon/kcp/library/models/internal/BookComparator;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/library/models/internal/BookComparator;-><init>(ILcom/amazon/kcp/util/ILocalizedStringComparator;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;->baseComparator:Lcom/amazon/kcp/library/models/internal/BookComparator;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/models/internal/BookComparator;)V
    .locals 0
    .parameter "comparator"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;->baseComparator:Lcom/amazon/kcp/library/models/internal/BookComparator;

    .line 85
    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;->baseComparator:Lcom/amazon/kcp/library/models/internal/BookComparator;

    iget-object v1, p1, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->book:Lcom/amazon/kcp/library/models/IListableBook;

    iget-object v2, p2, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/BookComparator;->compare(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/models/IListableBook;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    check-cast p1, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBookComparator;->compare(Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;Lcom/amazon/kcp/library/models/internal/ListableBookSorter$SortableBook;)I

    move-result v0

    return v0
.end method
