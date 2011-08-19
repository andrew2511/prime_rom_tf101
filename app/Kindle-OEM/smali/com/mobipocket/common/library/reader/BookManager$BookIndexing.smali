.class public Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;
.super Ljava/lang/Object;
.source "BookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BookIndexing"
.end annotation


# instance fields
.field private currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookManager;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->this$0:Lcom/mobipocket/common/library/reader/BookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 201
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/BookManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;-><init>(Lcom/mobipocket/common/library/reader/BookManager;)V

    return-void
.end method


# virtual methods
.method public asyncGetDataForIndexing(ILcom/mobipocket/common/library/reader/SearchEvents;IILcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;II)Lcom/mobipocket/common/library/reader/bookreader/EBook;
    .locals 9
    .parameter "securityCode"
    .parameter "searchEvents"
    .parameter "beginPos"
    .parameter "maxResults"
    .parameter "book"
    .parameter "security"
    .parameter "fontFactory"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->this$0:Lcom/mobipocket/common/library/reader/BookManager;

    move-object v1, p2

    move-object v2, p5

    move-object/from16 v3, p7

    move-object v4, p6

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-static/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/BookManager;->access$100(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/SearchEvents;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/system/security/Security;II)Lcom/mobipocket/common/library/reader/bookreader/EBook;

    move-result-object v7

    .line 226
    .local v7, currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->this$0:Lcom/mobipocket/common/library/reader/BookManager;

    invoke-static {v1, v7}, Lcom/mobipocket/common/library/reader/BookManager;->access$200(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/bookreader/EBook;)I

    move-result v8

    .line 227
    .local v8, minPosition:I
    if-ge p3, v8, :cond_0

    .line 229
    move p3, v8

    .line 232
    :cond_0
    new-instance v0, Lcom/mobipocket/common/library/reader/SearchManager;

    invoke-direct {v0, v7}, Lcom/mobipocket/common/library/reader/SearchManager;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    .line 233
    .local v0, currentSearch:Lcom/mobipocket/common/library/reader/SearchManager;
    if-gez p4, :cond_1

    .line 235
    const p4, 0x7fffffff

    .line 237
    :cond_1
    const/4 v3, 0x1

    iget-object v1, v7, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    const/4 v2, 0x1

    sub-int v6, v1, v2

    move-object v1, p2

    move v2, p1

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/mobipocket/common/library/reader/SearchManager;->getAllBookData(Lcom/mobipocket/common/library/reader/SearchEvents;IZIII)V

    .line 238
    return-object v7
.end method

.method public closeCurrentOpenedBook()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->closeBook()V

    .line 330
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 331
    return-void
.end method

.method public getWord(ILcom/amazon/system/security/Security;Lcom/mobipocket/common/library/reader/BookItem;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 260
    if-gez p4, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWord called with a negative beginPosition :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const-string v0, ""

    .line 276
    :goto_0
    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->closeCurrentOpenedBook()V

    .line 268
    new-instance v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->this$0:Lcom/mobipocket/common/library/reader/BookManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookManager;->access$300(Lcom/mobipocket/common/library/reader/BookManager;)Lcom/mobipocket/common/filesystem/PDBFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/mobipocket/common/library/reader/bookreader/EBook;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/security/Security;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 270
    :cond_2
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v0

    if-le p4, v0, :cond_3

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWord called with a beginPosition bigger than the size of the book :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    const-string v0, ""

    goto :goto_0

    .line 275
    :cond_3
    new-instance v0, Lcom/mobipocket/common/parser/EBookSearcher;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/EBookSearcher;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/SearchManager;)V

    .line 276
    const v1, 0x7fffffff

    invoke-virtual {v0, p1, p4, v1, p5}, Lcom/mobipocket/common/parser/EBookSearcher;->getTextAround(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getWords(ILcom/amazon/system/security/Security;Lcom/mobipocket/common/library/reader/BookItem;II)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 298
    if-ltz p4, :cond_0

    if-ge p5, p4, :cond_1

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWords called with wrong beginPosition ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") or endPosition ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v0, ""

    .line 314
    :goto_0
    return-object v0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/bookreader/EBook;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 305
    :cond_2
    invoke-virtual {p0}, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->closeCurrentOpenedBook()V

    .line 306
    new-instance v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-virtual {p3}, Lcom/mobipocket/common/library/reader/BookItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->this$0:Lcom/mobipocket/common/library/reader/BookManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookManager;->access$300(Lcom/mobipocket/common/library/reader/BookManager;)Lcom/mobipocket/common/filesystem/PDBFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/mobipocket/common/library/reader/bookreader/EBook;-><init>(Ljava/lang/String;Lcom/mobipocket/common/filesystem/PDBFactory;Lcom/amazon/system/security/Security;)V

    iput-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v0

    if-le p5, v0, :cond_4

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWord called with a endPosition bigger than the size of the book :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    const-string v0, ""

    goto :goto_0

    .line 313
    :cond_4
    new-instance v0, Lcom/mobipocket/common/parser/EBookSearcher;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookManager$BookIndexing;->currentOpenedBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/EBookSearcher;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;Lcom/mobipocket/common/library/reader/SearchManager;)V

    .line 314
    const v1, 0x7fffffff

    invoke-virtual {v0, p1, p4, p5, v1}, Lcom/mobipocket/common/parser/EBookSearcher;->getTextAround(IIII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
