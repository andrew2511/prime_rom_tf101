.class final Lcom/android/vending/util/GservicesValue$3;
.super Lcom/android/vending/util/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/vending/util/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/vending/util/GservicesValue",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/vending/util/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected retrieve(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .parameter "key"

    .prologue
    .line 73
    invoke-static {}, Lcom/android/vending/util/GservicesValue;->access$100()Lcom/android/vending/util/GservicesValue$GservicesReader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/util/GservicesValue$3;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/vending/util/GservicesValue$3;->mDefaultValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-interface {v0, v1, p0}, Lcom/android/vending/util/GservicesValue$GservicesReader;->getInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/android/vending/util/GservicesValue$3;->retrieve(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
