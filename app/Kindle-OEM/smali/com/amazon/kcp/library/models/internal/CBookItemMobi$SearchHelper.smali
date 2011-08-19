.class public Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;
.super Ljava/lang/Object;
.source "CBookItemMobi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/internal/CBookItemMobi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchHelper"
.end annotation


# static fields
.field private static final NUM_CONTEXT_WORDS:I = 0x14


# instance fields
.field private bookItem:Lcom/mobipocket/common/library/reader/BookItem;

.field private bookManager:Lcom/mobipocket/common/library/reader/BookManager;

.field private fontFactory:Lcom/amazon/system/drawing/FontFactory;

.field private security:Lcom/amazon/system/security/Security;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;)V
    .locals 0
    .parameter "bookManager"
    .parameter "bookItem"
    .parameter "security"
    .parameter "fontFactory"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    .line 75
    iput-object p2, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    .line 76
    iput-object p3, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->security:Lcom/amazon/system/security/Security;

    .line 77
    iput-object p4, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;Lcom/amazon/kcp/library/models/internal/CBookItemMobi$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;-><init>(Lcom/mobipocket/common/library/reader/BookManager;Lcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;)V

    return-void
.end method


# virtual methods
.method public search(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;I)V
    .locals 12
    .parameter "searchEvents"
    .parameter "expression"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mobipocket/common/library/reader/InvalidBookException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->bookManager:Lcom/mobipocket/common/library/reader/BookManager;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->bookItem:Lcom/mobipocket/common/library/reader/BookItem;

    iget-object v8, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->security:Lcom/amazon/system/security/Security;

    iget-object v9, p0, Lcom/amazon/kcp/library/models/internal/CBookItemMobi$SearchHelper;->fontFactory:Lcom/amazon/system/drawing/FontFactory;

    const/16 v10, 0x280

    const/16 v11, 0x1e0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v11}, Lcom/mobipocket/common/library/reader/BookManager;->asyncSearch(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;IIIILcom/mobipocket/common/library/reader/BookItem;Lcom/amazon/system/security/Security;Lcom/amazon/system/drawing/FontFactory;II)V

    .line 93
    return-void
.end method
