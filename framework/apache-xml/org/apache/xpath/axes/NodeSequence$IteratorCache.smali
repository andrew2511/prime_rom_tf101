.class final Lorg/apache/xpath/axes/NodeSequence$IteratorCache;
.super Ljava/lang/Object;
.source "NodeSequence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xpath/axes/NodeSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorCache"
.end annotation


# instance fields
.field private m_isComplete2:Z

.field private m_useCount2:I

.field private m_vec2:Lorg/apache/xml/utils/NodeVector;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    .line 882
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    .line 883
    return-void
.end method

.method static synthetic access$000(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Lorg/apache/xml/utils/NodeVector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 834
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->getVector()Lorg/apache/xml/utils/NodeVector;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 834
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->isComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setCacheComplete(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 834
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->useCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;Lorg/apache/xml/utils/NodeVector;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 834
    invoke-direct {p0, p1}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->setVector(Lorg/apache/xml/utils/NodeVector;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/xpath/axes/NodeSequence$IteratorCache;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 834
    invoke-direct {p0}, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->increaseUseCount()V

    return-void
.end method

.method private getVector()Lorg/apache/xml/utils/NodeVector;
    .registers 2

    .prologue
    .line 921
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    return-object v0
.end method

.method private increaseUseCount()V
    .registers 2

    .prologue
    .line 901
    iget-object v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    if-eqz v0, :cond_a

    .line 902
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    .line 904
    :cond_a
    return-void
.end method

.method private isComplete()Z
    .registers 2

    .prologue
    .line 939
    iget-boolean v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    return v0
.end method

.method private setCacheComplete(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 930
    iput-boolean p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_isComplete2:Z

    .line 932
    return-void
.end method

.method private setVector(Lorg/apache/xml/utils/NodeVector;)V
    .registers 3
    .parameter "nv"

    .prologue
    .line 912
    iput-object p1, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_vec2:Lorg/apache/xml/utils/NodeVector;

    .line 913
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    .line 914
    return-void
.end method

.method private useCount()I
    .registers 2

    .prologue
    .line 891
    iget v0, p0, Lorg/apache/xpath/axes/NodeSequence$IteratorCache;->m_useCount2:I

    return v0
.end method
