.class final Lcom/google/android/gsf/GservicesValue$2;
.super Lcom/google/android/gsf/GservicesValue;
.source "GservicesValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gsf/GservicesValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gsf/GservicesValue",
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
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected retrieve(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .parameter "key"

    .prologue
    .line 85
    invoke-static {}, Lcom/google/android/gsf/GservicesValue;->access$000()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/GservicesValue$2;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gsf/GservicesValue$2;->mDefaultValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic retrieve(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GservicesValue$2;->retrieve(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
