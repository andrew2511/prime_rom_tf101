.class Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;
.super Ljava/lang/Object;
.source "StylesheetRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xalan/templates/StylesheetRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ComposeState"
.end annotation


# instance fields
.field private m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

.field m_marks:Lorg/apache/xml/utils/IntStack;

.field private m_maxStackFrameSize:I

.field private m_variableNames:Ljava/util/Vector;

.field final synthetic this$0:Lorg/apache/xalan/templates/StylesheetRoot;


# direct methods
.method constructor <init>(Lorg/apache/xalan/templates/StylesheetRoot;)V
    .registers 7
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v3, Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-direct {v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    .line 1283
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    .line 1334
    new-instance v3, Lorg/apache/xml/utils/IntStack;

    invoke-direct {v3}, Lorg/apache/xml/utils/IntStack;-><init>()V

    iput-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    .line 1250
    #getter for: Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1251
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    if-ge v1, v2, :cond_3b

    .line 1253
    #getter for: Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;
    invoke-static {p1}, Lorg/apache/xalan/templates/StylesheetRoot;->access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xalan/templates/ElemVariable;

    .line 1254
    .local v0, ev:Lorg/apache/xalan/templates/ElemVariable;
    iget-object v3, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0}, Lorg/apache/xalan/templates/ElemVariable;->getName()Lorg/apache/xml/utils/QName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1251
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1257
    .end local v0           #ev:Lorg/apache/xalan/templates/ElemVariable;
    :cond_3b
    return-void
.end method


# virtual methods
.method addVariableName(Lorg/apache/xml/utils/QName;)I
    .registers 6
    .parameter "qname"

    .prologue
    .line 1293
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 1294
    .local v1, pos:I
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1295
    iget-object v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getGlobalsSize()I

    move-result v3

    sub-int v0, v2, v3

    .line 1296
    .local v0, frameSize:I
    iget v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    if-le v0, v2, :cond_21

    .line 1297
    iget v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    .line 1298
    :cond_21
    return v1
.end method

.method getCurrentStackFrameSize()I
    .registers 2

    .prologue
    .line 1318
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method getFrameSize()I
    .registers 2

    .prologue
    .line 1308
    iget v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    return v0
.end method

.method getGlobalsSize()I
    .registers 2

    .prologue
    .line 1331
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->this$0:Lorg/apache/xalan/templates/StylesheetRoot;

    #getter for: Lorg/apache/xalan/templates/StylesheetRoot;->m_variables:Ljava/util/Vector;
    invoke-static {v0}, Lorg/apache/xalan/templates/StylesheetRoot;->access$000(Lorg/apache/xalan/templates/StylesheetRoot;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getQNameID(Lorg/apache/xml/utils/QName;)I
    .registers 6
    .parameter "qname"

    .prologue
    .line 1272
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_ent:Lorg/apache/xml/dtm/ref/ExpandedNameTable;

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/xml/utils/QName;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xml/dtm/ref/ExpandedNameTable;->getExpandedTypeID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getVariableNames()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 1356
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    return-object v0
.end method

.method popStackMark()V
    .registers 3

    .prologue
    .line 1343
    iget-object v1, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {v1}, Lorg/apache/xml/utils/IntStack;->pop()I

    move-result v0

    .line 1344
    .local v0, mark:I
    invoke-virtual {p0, v0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->setCurrentStackFrameSize(I)V

    .line 1345
    return-void
.end method

.method pushStackMark()V
    .registers 3

    .prologue
    .line 1338
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_marks:Lorg/apache/xml/utils/IntStack;

    invoke-virtual {p0}, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->getCurrentStackFrameSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xml/utils/IntStack;->push(I)I

    .line 1339
    return-void
.end method

.method resetStackFrameSize()V
    .registers 2

    .prologue
    .line 1303
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_maxStackFrameSize:I

    .line 1304
    return-void
.end method

.method setCurrentStackFrameSize(I)V
    .registers 3
    .parameter "sz"

    .prologue
    .line 1326
    iget-object v0, p0, Lorg/apache/xalan/templates/StylesheetRoot$ComposeState;->m_variableNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->setSize(I)V

    .line 1327
    return-void
.end method
