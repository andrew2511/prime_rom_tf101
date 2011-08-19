.class Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;
.super Ljava/lang/Object;
.source "ASN1Collection.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/asn1/ASN1Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ASN1CollectionEnumeration"
.end annotation


# instance fields
.field private at:I

.field private final origSize:I

.field final synthetic this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;


# direct methods
.method private constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$100(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->origSize:I

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->at:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/org/bouncycastle/asn1/ASN1Collection;Lcom/android/org/bouncycastle/asn1/ASN1Collection$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$100(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->origSize:I

    if-eq v0, v1, :cond_10

    .line 175
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 178
    :cond_10
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->at:I

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->origSize:I

    if-ge v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public nextElement()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->size:I
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$100(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->origSize:I

    if-eq v0, v1, :cond_10

    .line 184
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 187
    :cond_10
    iget v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->at:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->at:I

    packed-switch v0, :pswitch_data_42

    .line 192
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->rest:[Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$600(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)[Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iget v1, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->at:I

    const/4 v2, 0x5

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    :goto_25
    return-object v0

    .line 188
    :pswitch_26
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj0:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$200(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    goto :goto_25

    .line 189
    :pswitch_2d
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj1:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$300(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    goto :goto_25

    .line 190
    :pswitch_34
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj2:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$400(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    goto :goto_25

    .line 191
    :pswitch_3b
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/ASN1Collection$ASN1CollectionEnumeration;->this$0:Lcom/android/org/bouncycastle/asn1/ASN1Collection;

    #getter for: Lcom/android/org/bouncycastle/asn1/ASN1Collection;->obj3:Lcom/android/org/bouncycastle/asn1/DEREncodable;
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Collection;->access$500(Lcom/android/org/bouncycastle/asn1/ASN1Collection;)Lcom/android/org/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    goto :goto_25

    .line 187
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_26
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method
