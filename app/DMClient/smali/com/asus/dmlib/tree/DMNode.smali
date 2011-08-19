.class public Lcom/asus/dmlib/tree/DMNode;
.super Ljava/lang/Object;
.source "DMNode.java"


# instance fields
.field mACL:Ljava/lang/String;

.field mAdd:Z

.field mAddHandler:Lcom/asus/dmlib/vdm/NodeAddHandler;

.field mCopy:Z

.field mDelHandler:Lcom/asus/dmlib/vdm/NodeDeleteHandler;

.field mDelete:Z

.field mExec:Z

.field mExecHandler:Lcom/asus/dmlib/vdm/NodeExecuteHandler;

.field mFormat:Ljava/lang/String;

.field mGet:Z

.field mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

.field mName:Ljava/lang/String;

.field mParient:Ljava/lang/String;

.field mPeplace:Z

.field mPermanent:Z

.field mType:Ljava/lang/String;

.field mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowAdd(Z)V
    .locals 0
    .parameter "add"

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mAdd:Z

    .line 145
    return-void
.end method

.method public allowCopy(Z)V
    .locals 0
    .parameter "copy"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mCopy:Z

    .line 177
    return-void
.end method

.method public allowDelete(Z)V
    .locals 0
    .parameter "delete"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mDelete:Z

    .line 185
    return-void
.end method

.method public allowExec(Z)V
    .locals 0
    .parameter "exec"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mExec:Z

    .line 169
    return-void
.end method

.method public allowGet(Z)V
    .locals 0
    .parameter "get"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mGet:Z

    .line 153
    return-void
.end method

.method public allowPermanent(Z)V
    .locals 0
    .parameter "permanent"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mPermanent:Z

    .line 137
    return-void
.end method

.method public allowReplace(Z)V
    .locals 0
    .parameter "replace"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/asus/dmlib/tree/DMNode;->mPeplace:Z

    .line 161
    return-void
.end method

.method public getACL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mACL:Ljava/lang/String;

    return-object v0
.end method

.method public getAddHandler()Lcom/asus/dmlib/vdm/NodeAddHandler;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mAddHandler:Lcom/asus/dmlib/vdm/NodeAddHandler;

    return-object v0
.end method

.method public getDelHandler()Lcom/asus/dmlib/vdm/NodeDeleteHandler;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mDelHandler:Lcom/asus/dmlib/vdm/NodeDeleteHandler;

    return-object v0
.end method

.method public getExecHandler()Lcom/asus/dmlib/vdm/NodeExecuteHandler;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mExecHandler:Lcom/asus/dmlib/vdm/NodeExecuteHandler;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getIoHandler()Lcom/asus/dmlib/vdm/NodeIoHandler;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

    return-object v0
.end method

.method public getParient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowAdd()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mAdd:Z

    return v0
.end method

.method public isAllowCopy()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mCopy:Z

    return v0
.end method

.method public isAllowDelete()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mDelete:Z

    return v0
.end method

.method public isAllowExec()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mExec:Z

    return v0
.end method

.method public isAllowGet()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mGet:Z

    return v0
.end method

.method public isAllowPermanent()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mPermanent:Z

    return v0
.end method

.method public isAllowReplace()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/asus/dmlib/tree/DMNode;->mPeplace:Z

    return v0
.end method

.method public onAdd([BJJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "total"
    .parameter "format"
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mAddHandler:Lcom/asus/dmlib/vdm/NodeAddHandler;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mAddHandler:Lcom/asus/dmlib/vdm/NodeAddHandler;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/asus/dmlib/vdm/NodeAddHandler;->add([BJJLjava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onDelete()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mDelHandler:Lcom/asus/dmlib/vdm/NodeDeleteHandler;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mDelHandler:Lcom/asus/dmlib/vdm/NodeDeleteHandler;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/NodeDeleteHandler;->delete(Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onExecute(Lcom/asus/dmlib/syncml/message/management/Status;Ljava/lang/String;)V
    .locals 1
    .parameter "status"
    .parameter "correlator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mExecHandler:Lcom/asus/dmlib/vdm/NodeExecuteHandler;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMNode;->mExecHandler:Lcom/asus/dmlib/vdm/NodeExecuteHandler;

    invoke-interface {v0, p1, p2}, Lcom/asus/dmlib/vdm/NodeExecuteHandler;->execute(Lcom/asus/dmlib/syncml/message/management/Status;Ljava/lang/String;)V

    .line 265
    :cond_0
    return-void
.end method

.method public onRead()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

    if-nez v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 224
    const-string v2, ""

    .line 236
    :goto_0
    return-object v2

    .line 226
    :cond_0
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_1
    const/16 v2, 0xff

    new-array v0, v2, [B

    .line 230
    .local v0, data:[B
    const/4 v1, 0x0

    .line 231
    .local v1, offset:I
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

    invoke-interface {v2, v1, v0}, Lcom/asus/dmlib/vdm/NodeIoHandler;->read(I[B)I

    move-result v1

    .line 233
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 234
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0

    .line 236
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public onWrite(Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 241
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

    if-nez v1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 245
    .local v0, offset:I
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/asus/dmlib/vdm/NodeIoHandler;->write(I[BI)V

    goto :goto_0
.end method

.method public printNode()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "TREE"

    invoke-virtual {p0}, Lcom/asus/dmlib/tree/DMNode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public setACL(Ljava/lang/String;)V
    .locals 0
    .parameter "aCL"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mACL:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setAddHandler(Lcom/asus/dmlib/vdm/NodeAddHandler;)V
    .locals 0
    .parameter "addHandler"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mAddHandler:Lcom/asus/dmlib/vdm/NodeAddHandler;

    .line 201
    return-void
.end method

.method public setDelHandler(Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V
    .locals 0
    .parameter "delHandler"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mDelHandler:Lcom/asus/dmlib/vdm/NodeDeleteHandler;

    .line 209
    return-void
.end method

.method public setExecHandler(Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V
    .locals 0
    .parameter "execHandler"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mExecHandler:Lcom/asus/dmlib/vdm/NodeExecuteHandler;

    .line 217
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mFormat:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setIoHandler(Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    .locals 0
    .parameter "ioHandler"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mIoHandler:Lcom/asus/dmlib/vdm/NodeIoHandler;

    .line 193
    return-void
.end method

.method public setParient(Ljava/lang/String;)V
    .locals 0
    .parameter "parient"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mType:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    const-string v1, "path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 75
    const-string v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 63
    const-string v1, "\tparient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mParient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const-string v1, "\tname = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
