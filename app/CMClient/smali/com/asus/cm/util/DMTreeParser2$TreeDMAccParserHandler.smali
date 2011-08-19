.class Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DMTreeParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/util/DMTreeParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TreeDMAccParserHandler"
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mIsInTargetNode:Z

.field private mIsNameTag:Z

.field private mIsNodeName:Z

.field private mNodeLevel:I

.field final synthetic this$0:Lcom/asus/cm/util/DMTreeParser2;


# direct methods
.method constructor <init>(Lcom/asus/cm/util/DMTreeParser2;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 6
    .parameter "pCh"
    .parameter "pStart"
    .parameter "pLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 127
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 129
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 134
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$000(Lcom/asus/cm/util/DMTreeParser2;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 135
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    const-string v3, "."

    invoke-static {v2, v3}, Lcom/asus/cm/util/DMTreeParser2;->access$002(Lcom/asus/cm/util/DMTreeParser2;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue head: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.mCurrentFootprintUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v3}, Lcom/asus/cm/util/DMTreeParser2;->access$000(Lcom/asus/cm/util/DMTreeParser2;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 173
    :cond_1
    :goto_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsNodeName:Z

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mIsNodeName = false "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 142
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".java: mQueue.size() return 0 befor calling mQueue.take()."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 146
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 150
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_3
    iget-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsNameTag:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********content in ArrayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 152
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$200(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    :cond_4
    iget-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsNodeName:Z

    if-eqz v2, :cond_1

    .line 156
    :try_start_2
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->element()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    :try_start_3
    iget-object v3, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/asus/cm/util/DMTreeParser2;->access$084(Lcom/asus/cm/util/DMTreeParser2;Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser2;->access$100(Lcom/asus/cm/util/DMTreeParser2;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 160
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    .line 161
    const/4 v2, 0x1

    iput v2, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCurrentFootprintUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser2;

    invoke-static {v3}, Lcom/asus/cm/util/DMTreeParser2;->access$000(Lcom/asus/cm/util/DMTreeParser2;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 164
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 165
    .restart local v0       #ex:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 168
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    goto/16 :goto_2
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, "===================== parse tree.xml end ====================="

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    const-string v0, "node"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-boolean v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    if-eqz v0, :cond_0

    .line 114
    iget v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    .line 115
    iget v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    const-string v0, "leaf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    iget-boolean v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    goto :goto_0

    .line 119
    :cond_2
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iput-boolean v1, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsNameTag:Z

    goto :goto_0
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "===================== parse tree.xml start ====================="

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 87
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pName"
    .parameter "pAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 98
    const-string v0, "node"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-boolean v1, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsNodeName:Z

    .line 100
    iget-boolean v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v0, "leaf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    iget-boolean v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsInTargetNode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mNodeLevel:I

    goto :goto_0

    .line 103
    :cond_2
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-boolean v1, p0, Lcom/asus/cm/util/DMTreeParser2$TreeDMAccParserHandler;->mIsNameTag:Z

    goto :goto_0
.end method
