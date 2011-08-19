.class public Ljava/lang/Object;
.source "Object.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method private native internalClone(Ljava/lang/Cloneable;)Ljava/lang/Object;
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 154
    instance-of v1, p0, Ljava/lang/Cloneable;

    if-nez v1, :cond_c

    .line 155
    new-instance v1, Ljava/lang/CloneNotSupportedException;

    const-string v2, "Class doesn\'t implement Cloneable"

    invoke-direct {v1, v2}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_c
    move-object v0, p0

    check-cast v0, Ljava/lang/Cloneable;

    move-object v1, v0

    invoke-direct {p0, v1}, Ljava/lang/Object;->internalClone(Ljava/lang/Cloneable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 191
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public final native getClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public native hashCode()I
.end method

.method public final native notify()V
.end method

.method public final native notifyAll()V
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wait()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 361
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Ljava/lang/Object;->wait(JI)V

    .line 362
    return-void
.end method

.method public final wait(J)V
    .registers 4
    .parameter "millis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/lang/Object;->wait(JI)V

    .line 399
    return-void
.end method

.method public final native wait(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
