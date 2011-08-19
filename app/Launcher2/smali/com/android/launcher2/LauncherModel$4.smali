.class final Lcom/android/launcher2/LauncherModel$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/ApplicationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1782
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->access$1800()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1780
    check-cast p1, Lcom/android/launcher2/ApplicationInfo;

    .end local p1
    check-cast p2, Lcom/android/launcher2/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/LauncherModel$4;->compare(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v0

    return v0
.end method
