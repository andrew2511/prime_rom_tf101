.class Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;
.super Ljava/lang/Object;
.source "SubscriptionPlanActivity.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;->this$0:Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity;

    return-object v0
.end method


# virtual methods
.method public onPositiveResult()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;-><init>(Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2;)V

    .line 82
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/SubscriptionPlanActivity$2$1;->start()V

    .line 83
    return-void
.end method
