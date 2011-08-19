.class Lcom/android/vending/adapters/MyDownloadsAdapter$1;
.super Ljava/util/ArrayList;
.source "MyDownloadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/adapters/MyDownloadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/vending/model/Asset;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;


# direct methods
.method constructor <init>(Lcom/android/vending/adapters/MyDownloadsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/vending/adapters/MyDownloadsAdapter$1;->this$0:Lcom/android/vending/adapters/MyDownloadsAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/vending/model/Asset;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, assets:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/vending/model/Asset;>;"
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 60
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 71
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 72
    invoke-super {p0}, Ljava/util/ArrayList;->clear()V

    .line 73
    return-void
.end method

.method public get(I)Lcom/android/vending/model/Asset;
    .locals 0
    .parameter "position"

    .prologue
    .line 77
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 78
    invoke-super {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset;

    return-object p0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/vending/adapters/MyDownloadsAdapter$1;->get(I)Lcom/android/vending/model/Asset;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 66
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
