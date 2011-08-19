.class public Lorg/apache/xalan/templates/TemplateList$TemplateWalker;
.super Ljava/lang/Object;
.source "TemplateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/TemplateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TemplateWalker"
.end annotation


# instance fields
.field private curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

.field private hashIterator:Ljava/util/Enumeration;

.field private inPatterns:Z

.field private m_compilerCache:Ljava/util/Hashtable;

.field final synthetic this$0:Lorg/apache/xalan/templates/TemplateList;


# direct methods
.method private constructor <init>(Lorg/apache/xalan/templates/TemplateList;)V
    .registers 3
    .parameter

    .prologue
    .line 869
    iput-object p1, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 866
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    .line 870
    #getter for: Lorg/apache/xalan/templates/TemplateList;->m_patternTable:Ljava/util/Hashtable;
    invoke-static {p1}, Lorg/apache/xalan/templates/TemplateList;->access$100(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 873
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xalan/templates/TemplateList;Lorg/apache/xalan/templates/TemplateList$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;-><init>(Lorg/apache/xalan/templates/TemplateList;)V

    return-void
.end method


# virtual methods
.method public next()Lorg/apache/xalan/templates/ElemTemplate;
    .registers 6

    .prologue
    .line 878
    const/4 v1, 0x0

    .line 883
    .local v1, retValue:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_1
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-eqz v2, :cond_1b

    .line 885
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_11

    .line 886
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getNext()Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 888
    :cond_11
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    if-eqz v2, :cond_52

    .line 889
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    .line 905
    :cond_1b
    :goto_1b
    iget-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    if-nez v2, :cond_2f

    .line 907
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 908
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #retValue:Lorg/apache/xalan/templates/ElemTemplate;
    check-cast v1, Lorg/apache/xalan/templates/ElemTemplate;

    .line 913
    .restart local v1       #retValue:Lorg/apache/xalan/templates/ElemTemplate;
    :cond_2f
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemTemplate;

    .line 914
    .local v0, ct:Lorg/apache/xalan/templates/ElemTemplate;
    if-nez v0, :cond_1

    .line 916
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->m_compilerCache:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lorg/apache/xalan/templates/ElemTemplate;->getUid()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 917
    .end local v0           #ct:Lorg/apache/xalan/templates/ElemTemplate;
    :goto_51
    return-object v2

    .line 892
    :cond_52
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 894
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    .line 895
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->curPattern:Lorg/apache/xalan/templates/TemplateSubPatternAssociation;

    invoke-virtual {v2}, Lorg/apache/xalan/templates/TemplateSubPatternAssociation;->getTemplate()Lorg/apache/xalan/templates/ElemTemplate;

    move-result-object v1

    goto :goto_1b

    .line 899
    :cond_6b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->inPatterns:Z

    .line 900
    iget-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->this$0:Lorg/apache/xalan/templates/TemplateList;

    #getter for: Lorg/apache/xalan/templates/TemplateList;->m_namedTemplates:Ljava/util/Hashtable;
    invoke-static {v2}, Lorg/apache/xalan/templates/TemplateList;->access$200(Lorg/apache/xalan/templates/TemplateList;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xalan/templates/TemplateList$TemplateWalker;->hashIterator:Ljava/util/Enumeration;

    goto :goto_1b

    .line 910
    :cond_7b
    const/4 v2, 0x0

    goto :goto_51
.end method
