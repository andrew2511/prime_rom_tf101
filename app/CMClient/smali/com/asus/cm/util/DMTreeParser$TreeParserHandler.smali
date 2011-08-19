.class Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DMTreeParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/util/DMTreeParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TreeParserHandler"
.end annotation


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mIsInTargetNode:Z

.field private mIsLeafName:Z

.field private mIsNodeName:Z

.field final synthetic this$0:Lcom/asus/cm/util/DMTreeParser;


# direct methods
.method constructor <init>(Lcom/asus/cm/util/DMTreeParser;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

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
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 118
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 120
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-void

    .line 123
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

    .line 125
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$000(Lcom/asus/cm/util/DMTreeParser;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 126
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    const-string v3, "."

    invoke-static {v2, v3}, Lcom/asus/cm/util/DMTreeParser;->access$002(Lcom/asus/cm/util/DMTreeParser;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$100(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$100(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queue head: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$100(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->element()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$000(Lcom/asus/cm/util/DMTreeParser;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 163
    :cond_1
    :goto_2
    iput-boolean v5, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsNodeName:Z

    .line 164
    iput-boolean v5, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsLeafName:Z

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mIsNodeName = false"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 133
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

    .line 136
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 137
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_3
    iget-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsNodeName:Z

    if-eqz v2, :cond_4

    .line 143
    :try_start_2
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$100(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->element()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_1

    .line 145
    :try_start_3
    iget-object v3, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$100(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/asus/cm/util/DMTreeParser;->access$084(Lcom/asus/cm/util/DMTreeParser;Ljava/lang/Object;)Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$100(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsInTargetNode:Z

    .line 148
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$000(Lcom/asus/cm/util/DMTreeParser;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 150
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 151
    .restart local v0       #ex:Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 154
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v2

    goto/16 :goto_2

    .line 158
    :cond_4
    iget-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsInTargetNode:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsLeafName:Z

    if-eqz v2, :cond_1

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content in ArrayList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 160
    iget-object v2, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->this$0:Lcom/asus/cm/util/DMTreeParser;

    invoke-static {v2}, Lcom/asus/cm/util/DMTreeParser;->access$200(Lcom/asus/cm/util/DMTreeParser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    .locals 1
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsInTargetNode:Z

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "node"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsInTargetNode:Z

    .line 113
    :cond_0
    return-void
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
    .locals 4
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
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pLocalName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 98
    const-string v0, "node"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iput-boolean v3, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsNodeName:Z

    .line 100
    const-string v0, "mIsNodeName set true"

    invoke-static {p0, v0, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v0, "leaf"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput-boolean v3, p0, Lcom/asus/cm/util/DMTreeParser$TreeParserHandler;->mIsLeafName:Z

    goto :goto_0
.end method
