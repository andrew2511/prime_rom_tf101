.class final Lcom/google/android/finsky/config/GservicesValue$2;
.super Lcom/google/android/finsky/config/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/config/GservicesValue",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected retrieve(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .parameter "key"

    .prologue
    .line 65
    invoke-static {}, Lcom/google/android/finsky/config/GservicesValue;->access$100()Lcom/google/android/finsky/config/GservicesValue$GservicesReader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/GservicesValue$2;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/finsky/config/GservicesValue$2;->mDefaultValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-interface {v0, v1, p0}, Lcom/google/android/finsky/config/GservicesValue$GservicesReader;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/config/GservicesValue$2;->retrieve(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
