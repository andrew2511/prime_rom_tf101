.class Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$7;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


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


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$7;->val$plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$7;->val$plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object p0, v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;

    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;->Name:Ljava/lang/String;

    .line 66
    return-void
.end method
