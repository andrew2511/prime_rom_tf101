.class Lcom/amazon/kcp/library/models/CArchivedItemsLibrary$8;
.super Ljava/lang/Object;
.source "CArchivedItemsLibrary.java"

# interfaces
.implements Lcom/amazon/kcp/util/ILocalizedStringComparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/CArchivedItemsLibrary;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/system/io/IFileConnectionFactory;Lcom/amazon/kcp/library/dictionary/IDictionaryManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public localeCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "firstString"
    .parameter "secondString"

    .prologue
    .line 352
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
