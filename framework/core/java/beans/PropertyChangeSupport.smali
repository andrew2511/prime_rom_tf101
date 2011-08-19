.class public Ljava/beans/PropertyChangeSupport;
.super Ljava/lang/Object;
.source "PropertyChangeSupport.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x58d5d264574860bbL


# instance fields
.field private transient listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/beans/PropertyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private transient sourceBean:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "source"

    const-class v4, Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "children"

    const-class v4, Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "propertyChangeSupportSerializedDataVersion"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/beans/PropertyChangeSupport;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter "sourceBean"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    .line 68
    if-nez p1, :cond_12

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 71
    :cond_12
    iput-object p1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z
    .registers 10
    .parameter "aName"
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 140
    :goto_1
    instance-of v4, p3, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v4, :cond_2f

    .line 141
    move-object v0, p3

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v3, v0

    .line 142
    .local v3, bProxy:Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v3}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, bName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object p3

    .line 144
    if-nez p1, :cond_25

    .line 145
    instance-of v4, p2, Ljava/beans/PropertyChangeListenerProxy;

    if-nez v4, :cond_19

    move v4, v5

    .line 157
    .end local v2           #bName:Ljava/lang/String;
    .end local v3           #bProxy:Ljava/beans/PropertyChangeListenerProxy;
    :goto_18
    return v4

    .line 148
    .restart local v2       #bName:Ljava/lang/String;
    .restart local v3       #bProxy:Ljava/beans/PropertyChangeListenerProxy;
    :cond_19
    move-object v0, p2

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v1, v0

    .line 149
    .local v1, aProxy:Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v1}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {v1}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object p2

    .line 152
    .end local v1           #aProxy:Ljava/beans/PropertyChangeListenerProxy;
    :cond_25
    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    move v4, v5

    .line 153
    goto :goto_18

    .line 155
    :cond_2d
    const/4 p1, 0x0

    .line 156
    goto :goto_1

    .line 157
    .end local v2           #bName:Ljava/lang/String;
    .end local v3           #bProxy:Ljava/beans/PropertyChangeListenerProxy;
    :cond_2f
    if-nez p1, :cond_39

    invoke-static {p2, p3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x1

    goto :goto_18

    :cond_39
    move v4, v5

    goto :goto_18
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 12
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 353
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v6

    .line 354
    .local v6, readFields:Ljava/io/ObjectInputStream$GetField;
    const-string v7, "source"

    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    .line 355
    new-instance v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    .line 357
    const-string v7, "children"

    invoke-virtual {v6, v7, v8}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 359
    .local v0, children:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    if-eqz v0, :cond_5b

    .line 360
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 361
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/beans/PropertyChangeSupport;

    iget-object v7, v7, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/beans/PropertyChangeListener;

    .line 362
    .local v5, p:Ljava/beans/PropertyChangeListener;
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    new-instance v9, Ljava/beans/PropertyChangeListenerProxy;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v9, v7, v5}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    .line 368
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #p:Ljava/beans/PropertyChangeListener;
    :cond_5b
    :goto_5b
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    .local v4, listener:Ljava/beans/PropertyChangeListener;
    if-eqz v4, :cond_69

    .line 369
    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 371
    :cond_69
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 12
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 323
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/beans/PropertyChangeSupport;>;"
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/beans/PropertyChangeListener;

    .line 324
    .local v5, p:Ljava/beans/PropertyChangeListener;
    instance-of v8, v5, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v8, :cond_b

    instance-of v8, v5, Ljava/io/Serializable;

    if-nez v8, :cond_b

    .line 325
    move-object v0, v5

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v6, v0

    .line 326
    .local v6, proxy:Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v6}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v3

    check-cast v3, Ljava/beans/PropertyChangeListener;

    .line 327
    .local v3, listener:Ljava/beans/PropertyChangeListener;
    instance-of v8, v3, Ljava/io/Serializable;

    if-eqz v8, :cond_b

    .line 328
    invoke-virtual {v6}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyChangeSupport;

    .line 329
    .local v2, list:Ljava/beans/PropertyChangeSupport;
    if-nez v2, :cond_47

    .line 330
    new-instance v2, Ljava/beans/PropertyChangeSupport;

    .end local v2           #list:Ljava/beans/PropertyChangeSupport;
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-direct {v2, v8}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    .line 331
    .restart local v2       #list:Ljava/beans/PropertyChangeSupport;
    invoke-virtual {v6}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_47
    iget-object v8, v2, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 338
    .end local v2           #list:Ljava/beans/PropertyChangeSupport;
    .end local v3           #listener:Ljava/beans/PropertyChangeListener;
    .end local v5           #p:Ljava/beans/PropertyChangeListener;
    .end local v6           #proxy:Ljava/beans/PropertyChangeListenerProxy;
    :cond_4d
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v7

    .line 339
    .local v7, putFields:Ljava/io/ObjectOutputStream$PutField;
    const-string v8, "source"

    iget-object v9, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    const-string v8, "children"

    invoke-virtual {v7, v8, v4}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 343
    iget-object v8, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_66
    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/beans/PropertyChangeListener;

    .line 344
    .restart local v5       #p:Ljava/beans/PropertyChangeListener;
    instance-of v8, v5, Ljava/io/Serializable;

    if-eqz v8, :cond_66

    .line 345
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_66

    .line 348
    .end local v5           #p:Ljava/beans/PropertyChangeListener;
    :cond_7a
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 349
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 304
    if-eqz p1, :cond_7

    .line 305
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_7
    return-void
.end method

.method public addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .parameter "propertyName"
    .parameter "listener"

    .prologue
    .line 167
    if-eqz p2, :cond_e

    if-eqz p1, :cond_e

    .line 168
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    new-instance v1, Ljava/beans/PropertyChangeListenerProxy;

    invoke-direct {v1, p1, p2}, Ljava/beans/PropertyChangeListenerProxy;-><init>(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_e
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;III)V
    .registers 7
    .parameter "propertyName"
    .parameter "index"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 258
    if-eq p3, p4, :cond_d

    .line 259
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 262
    :cond_d
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 11
    .parameter "propertyName"
    .parameter "index"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 108
    new-instance v0, Ljava/beans/IndexedPropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ljava/beans/IndexedPropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 110
    return-void
.end method

.method public fireIndexedPropertyChange(Ljava/lang/String;IZZ)V
    .registers 7
    .parameter "propertyName"
    .parameter "index"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 220
    if-eq p3, p4, :cond_d

    .line 221
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/beans/PropertyChangeSupport;->fireIndexedPropertyChange(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    .line 224
    :cond_d
    return-void
.end method

.method public firePropertyChange(Ljava/beans/PropertyChangeEvent;)V
    .registers 10
    .parameter "event"

    .prologue
    .line 379
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    .line 380
    .local v5, propertyName:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getOldValue()Ljava/lang/Object;

    move-result-object v3

    .line 381
    .local v3, oldValue:Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    .line 382
    .local v2, newValue:Ljava/lang/Object;
    if-eqz v2, :cond_17

    if-eqz v3, :cond_17

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 398
    :cond_16
    return-void

    .line 387
    :cond_17
    iget-object v7, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/beans/PropertyChangeListener;

    .line 389
    .local v4, p:Ljava/beans/PropertyChangeListener;
    :goto_29
    instance-of v7, v4, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v7, :cond_42

    .line 390
    move-object v0, v4

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v6, v0

    .line 391
    .local v6, proxy:Ljava/beans/PropertyChangeListenerProxy;
    invoke-virtual {v6}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 394
    invoke-virtual {v6}, Ljava/beans/PropertyChangeListenerProxy;->getListener()Ljava/util/EventListener;

    move-result-object v4

    .end local v4           #p:Ljava/beans/PropertyChangeListener;
    check-cast v4, Ljava/beans/PropertyChangeListener;

    .line 395
    .restart local v4       #p:Ljava/beans/PropertyChangeListener;
    goto :goto_29

    .line 396
    .end local v6           #proxy:Ljava/beans/PropertyChangeListenerProxy;
    :cond_42
    invoke-interface {v4, p1}, Ljava/beans/PropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    goto :goto_1d
.end method

.method public firePropertyChange(Ljava/lang/String;II)V
    .registers 6
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 88
    new-instance v0, Ljava/beans/PropertyChangeEvent;

    iget-object v1, p0, Ljava/beans/PropertyChangeSupport;->sourceBean:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, p2, p3}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 89
    return-void
.end method

.method public firePropertyChange(Ljava/lang/String;ZZ)V
    .registers 6
    .parameter "propertyName"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 201
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 202
    return-void
.end method

.method public getPropertyChangeListeners()[Ljava/beans/PropertyChangeListener;
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/beans/PropertyChangeListener;

    return-object p0
.end method

.method public getPropertyChangeListeners(Ljava/lang/String;)[Ljava/beans/PropertyChangeListener;
    .registers 7
    .parameter "propertyName"

    .prologue
    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Ljava/beans/PropertyChangeListener;>;"
    iget-object v4, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/beans/PropertyChangeListener;

    .line 180
    .local v2, p:Ljava/beans/PropertyChangeListener;
    instance-of v4, v2, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v4, :cond_b

    move-object v0, v2

    check-cast v0, Ljava/beans/PropertyChangeListenerProxy;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 182
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 185
    .end local v2           #p:Ljava/beans/PropertyChangeListener;
    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/beans/PropertyChangeListener;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/beans/PropertyChangeListener;

    return-object p0
.end method

.method public hasListeners(Ljava/lang/String;)Z
    .registers 5
    .parameter "propertyName"

    .prologue
    .line 274
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 275
    .local v1, p:Ljava/beans/PropertyChangeListener;
    instance-of v2, v1, Ljava/beans/PropertyChangeListenerProxy;

    if-eqz v2, :cond_22

    check-cast v1, Ljava/beans/PropertyChangeListenerProxy;

    .end local v1           #p:Ljava/beans/PropertyChangeListener;
    invoke-virtual {v1}, Ljava/beans/PropertyChangeListenerProxy;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 277
    :cond_22
    const/4 v2, 0x1

    .line 280
    :goto_23
    return v2

    :cond_24
    const/4 v2, 0x0

    goto :goto_23
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 290
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 291
    .local v1, p:Ljava/beans/PropertyChangeListener;
    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v1}, Ljava/beans/PropertyChangeSupport;->equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 296
    .end local v1           #p:Ljava/beans/PropertyChangeListener;
    :cond_1e
    return-void
.end method

.method public removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V
    .registers 6
    .parameter "propertyName"
    .parameter "listener"

    .prologue
    .line 120
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/beans/PropertyChangeListener;

    .line 121
    .local v1, p:Ljava/beans/PropertyChangeListener;
    invoke-direct {p0, p1, p2, v1}, Ljava/beans/PropertyChangeSupport;->equals(Ljava/lang/String;Ljava/util/EventListener;Ljava/util/EventListener;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 122
    iget-object v2, p0, Ljava/beans/PropertyChangeSupport;->listeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 126
    .end local v1           #p:Ljava/beans/PropertyChangeListener;
    :cond_1d
    return-void
.end method
