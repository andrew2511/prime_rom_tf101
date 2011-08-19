.class public Lcom/android/org/bouncycastle/asn1/DEREncodableVector;
.super Ljava/lang/Object;
.source "DEREncodableVector.java"


# instance fields
.field v:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    .line 20
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "obj"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public get(I)Lcom/android/org/bouncycastle/asn1/DEREncodable;
    .registers 3
    .parameter "i"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/org/bouncycastle/asn1/DEREncodable;

    return-object p0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/DEREncodableVector;->v:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
