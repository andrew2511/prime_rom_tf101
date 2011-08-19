.class Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;
.super Ljava/lang/Object;
.source "Payment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PaymentInfo"
.end annotation


# instance fields
.field public City:Ljava/lang/String;

.field public Country:Ljava/lang/String;

.field public CreditCvv:Ljava/lang/String;

.field public CreditNumber:Ljava/lang/String;

.field public CreditType:Ljava/lang/String;

.field public ExpiryMonth:I

.field public ExpiryYear:I

.field public Holder:Ljava/lang/String;

.field public State:Ljava/lang/String;

.field public StreetAddress:Ljava/lang/String;

.field public Zip:Ljava/lang/String;

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Payment;


# direct methods
.method private constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->this$0:Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/Payment;Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;)V

    return-void
.end method
