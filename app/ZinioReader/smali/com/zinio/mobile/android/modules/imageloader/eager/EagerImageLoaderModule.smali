.class public Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoaderModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/modules/imageloader/ImageLoaderModule;


# instance fields
.field private a:Lcom/zinio/mobile/android/modules/imageloader/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/zinio/mobile/android/modules/imageloader/b;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 13
    check-cast p1, Lcom/zinio/mobile/android/modules/imageloader/b;

    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoaderModule;->a:Lcom/zinio/mobile/android/modules/imageloader/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoader;-><init>(Lcom/zinio/mobile/android/modules/imageloader/b;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoaderModule;->a:Lcom/zinio/mobile/android/modules/imageloader/a;

    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/modules/imageloader/eager/EagerImageLoaderModule;->a:Lcom/zinio/mobile/android/modules/imageloader/a;

    return-object v0
.end method
