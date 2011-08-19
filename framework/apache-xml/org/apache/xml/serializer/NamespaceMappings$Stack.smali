.class Lorg/apache/xml/serializer/NamespaceMappings$Stack;
.super Ljava/lang/Object;
.source "NamespaceMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/NamespaceMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stack"
.end annotation


# instance fields
.field m_stack:[Ljava/lang/Object;

.field private max:I

.field final synthetic this$0:Lorg/apache/xml/serializer/NamespaceMappings;

.field private top:I


# direct methods
.method public constructor <init>(Lorg/apache/xml/serializer/NamespaceMappings;)V
    .registers 3
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 376
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    .line 377
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    .line 394
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 4

    .prologue
    .line 443
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v0, v1, :cond_d

    .line 444
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 445
    :cond_d
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 446
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 380
    new-instance v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;

    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->this$0:Lorg/apache/xml/serializer/NamespaceMappings;

    invoke-direct {v0, v2}, Lorg/apache/xml/serializer/NamespaceMappings$Stack;-><init>(Lorg/apache/xml/serializer/NamespaceMappings;)V

    .line 381
    .local v0, clone:Lorg/apache/xml/serializer/NamespaceMappings$Stack;
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    .line 382
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    iput v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 383
    iget v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    .line 384
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v1, v2, :cond_25

    .line 387
    iget-object v2, v0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 384
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 389
    :cond_25
    return-object v0
.end method

.method public empty()Z
    .registers 2

    .prologue
    .line 439
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getElement(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"

    .prologue
    .line 449
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 436
    iget v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public peek()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 423
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-ltz v1, :cond_b

    .line 424
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aget-object v0, v1, v2

    .line 428
    :goto_a
    return-object v0

    .line 427
    :cond_b
    const/4 v0, 0x0

    .local v0, o:Ljava/lang/Object;
    goto :goto_a
.end method

.method public peek(I)Ljava/lang/Object;
    .registers 3
    .parameter "idx"

    .prologue
    .line 432
    iget-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 411
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-ltz v1, :cond_11

    .line 412
    iget-object v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aget-object v0, v1, v2

    .line 414
    .local v0, o:Ljava/lang/Object;
    iget v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 418
    .end local v0           #o:Ljava/lang/Object;
    :goto_10
    return-object v0

    .line 417
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #o:Ljava/lang/Object;
    goto :goto_10
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 397
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    .line 398
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    if-gt v2, v3, :cond_20

    .line 399
    iget v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v1, v2, 0x1

    .line 400
    .local v1, newMax:I
    new-array v0, v1, [Ljava/lang/Object;

    .line 401
    .local v0, newArray:[Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    iput v1, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->max:I

    .line 403
    iput-object v0, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    .line 405
    .end local v0           #newArray:[Ljava/lang/Object;
    .end local v1           #newMax:I
    :cond_20
    iget-object v2, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->m_stack:[Ljava/lang/Object;

    iget v3, p0, Lorg/apache/xml/serializer/NamespaceMappings$Stack;->top:I

    aput-object p1, v2, v3

    .line 406
    return-object p1
.end method
