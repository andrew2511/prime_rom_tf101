.class Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->getList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;->val$plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;->val$result:Ljava/util/List;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;->val$plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    invoke-direct {v1}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;-><init>()V

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;->val$result:Ljava/util/List;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;->val$plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object p0, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
