.class public Lcom/google/android/finsky/model/FormOfPayment;
.super Ljava/lang/Object;
.source "FormOfPayment.java"


# instance fields
.field private final mCart:Ljava/lang/String;

.field private mHasCart:Z

.field private final mInstrumentId:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "instrumentId"
    .parameter "hasCart"
    .parameter "cart"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/finsky/model/FormOfPayment;->mName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/google/android/finsky/model/FormOfPayment;->mInstrumentId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/google/android/finsky/model/FormOfPayment;->mCart:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lcom/google/android/finsky/model/FormOfPayment;->mHasCart:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getCart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/model/FormOfPayment;->mCart:Ljava/lang/String;

    return-object v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/model/FormOfPayment;->mInstrumentId:Ljava/lang/String;

    return-object v0
.end method

.method public hasCart()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/google/android/finsky/model/FormOfPayment;->mHasCart:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/finsky/model/FormOfPayment;->mName:Ljava/lang/String;

    return-object v0
.end method
