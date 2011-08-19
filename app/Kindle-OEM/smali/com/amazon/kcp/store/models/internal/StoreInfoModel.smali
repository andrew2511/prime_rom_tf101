.class public Lcom/amazon/kcp/store/models/internal/StoreInfoModel;
.super Lcom/amazon/kcp/store/models/internal/CAsyncModel;
.source "StoreInfoModel.java"

# interfaces
.implements Lcom/amazon/kcp/store/models/IStoreInfoModel;


# instance fields
.field private final browseModel:Lcom/amazon/kcp/store/models/IBrowseModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/models/IBrowseModel;)V
    .locals 0
    .parameter "browseModel"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/amazon/kcp/store/models/internal/CAsyncModel;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/store/models/internal/StoreInfoModel;->browseModel:Lcom/amazon/kcp/store/models/IBrowseModel;

    .line 27
    return-void
.end method


# virtual methods
.method public getTotalBookCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/store/models/internal/StoreInfoModel;->browseModel:Lcom/amazon/kcp/store/models/IBrowseModel;

    invoke-interface {v0}, Lcom/amazon/kcp/store/models/IBrowseModel;->getTotalBooksCount()I

    move-result v0

    return v0
.end method
