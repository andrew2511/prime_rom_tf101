.class public Lcom/zinio/mobile/android/modules/overlays/InteractiveOverlaysModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/f/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/zinio/mobile/android/view/issue/h;)Lcom/zinio/mobile/android/modules/overlays/a;
    .locals 2
    .parameter

    .prologue
    .line 14
    new-instance v0, Lcom/zinio/mobile/android/modules/overlays/a;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/h;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/modules/overlays/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/zinio/mobile/android/view/issue/h;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 11
    check-cast p1, Lcom/zinio/mobile/android/view/issue/h;

    invoke-static {p1}, Lcom/zinio/mobile/android/modules/overlays/InteractiveOverlaysModule;->a(Lcom/zinio/mobile/android/view/issue/h;)Lcom/zinio/mobile/android/modules/overlays/a;

    move-result-object v0

    return-object v0
.end method
