.class Lcom/android/commands/pm/Pm$1;
.super Ljava/lang/Object;
.source "Pm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/pm/Pm;->runListFeatures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/FeatureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .registers 2
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/commands/pm/Pm$1;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .registers 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 293
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    .line 296
    :goto_7
    return v0

    .line 294
    :cond_8
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_7

    .line 295
    :cond_e
    iget-object v0, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_7

    .line 296
    :cond_14
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_7
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 291
    check-cast p1, Landroid/content/pm/FeatureInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/FeatureInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/commands/pm/Pm$1;->compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I

    move-result v0

    return v0
.end method
