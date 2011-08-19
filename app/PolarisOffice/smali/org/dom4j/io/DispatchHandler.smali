.class Lorg/dom4j/io/DispatchHandler;
.super Ljava/lang/Object;
.source "DispatchHandler.java"

# interfaces
.implements Lorg/dom4j/ElementHandler;


# instance fields
.field private atRoot:Z

.field private defaultHandler:Lorg/dom4j/ElementHandler;

.field private handlerStack:Ljava/util/ArrayList;

.field private handlers:Ljava/util/HashMap;

.field private path:Ljava/lang/String;

.field private pathStack:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    .line 59
    const-string v0, "/"

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    .line 63
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1
    .parameter "handlerPath"
    .parameter "handler"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public containsHandler(Ljava/lang/String;)Z
    .locals 1
    .parameter "handlerPath"

    .prologue
    .line 102
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActiveHandlerCount()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;
    .locals 1
    .parameter "handlerPath"

    .prologue
    .line 114
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/ElementHandler;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    return-object v0
.end method

.method public onEnd(Lorg/dom4j/ElementPath;)V
    .locals 4
    .parameter "elementPath"

    .prologue
    const/4 v3, 0x1

    .line 195
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/ElementHandler;

    .line 199
    .local v0, handler:Lorg/dom4j/ElementHandler;
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 202
    invoke-interface {v0, p1}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    .line 212
    .end local v0           #handler:Lorg/dom4j/ElementHandler;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 215
    iput-boolean v3, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    .line 217
    :cond_1
    return-void

    .line 206
    :cond_2
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v1, p1}, Lorg/dom4j/ElementHandler;->onEnd(Lorg/dom4j/ElementPath;)V

    goto :goto_0
.end method

.method public onStart(Lorg/dom4j/ElementPath;)V
    .locals 4
    .parameter "elementPath"

    .prologue
    .line 164
    invoke-interface {p1}, Lorg/dom4j/ElementPath;->getCurrent()Lorg/dom4j/Element;

    move-result-object v0

    .line 167
    .local v0, element:Lorg/dom4j/Element;
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    iget-boolean v2, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    if-eqz v2, :cond_1

    .line 171
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    .line 172
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    .line 177
    :goto_0
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/ElementHandler;

    .line 181
    .local v1, handler:Lorg/dom4j/ElementHandler;
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-interface {v1, p1}, Lorg/dom4j/ElementHandler;->onStart(Lorg/dom4j/ElementPath;)V

    .line 192
    .end local v1           #handler:Lorg/dom4j/ElementHandler;
    :cond_0
    :goto_1
    return-void

    .line 174
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    goto :goto_0

    .line 188
    :cond_2
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    if-eqz v2, :cond_0

    .line 189
    iget-object v2, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    invoke-interface {v2, p1}, Lorg/dom4j/ElementHandler;->onStart(Lorg/dom4j/ElementPath;)V

    goto :goto_1
.end method

.method public removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;
    .locals 1
    .parameter "handlerPath"

    .prologue
    .line 89
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/dom4j/ElementHandler;

    return-object p0
.end method

.method public resetHandlers()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/DispatchHandler;->atRoot:Z

    .line 146
    const-string v0, "/"

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->path:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->pathStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlerStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 149
    iget-object v0, p0, Lorg/dom4j/io/DispatchHandler;->handlers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    .line 151
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 137
    iput-object p1, p0, Lorg/dom4j/io/DispatchHandler;->defaultHandler:Lorg/dom4j/ElementHandler;

    .line 138
    return-void
.end method
