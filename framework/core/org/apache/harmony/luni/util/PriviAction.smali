.class public Lorg/apache/harmony/luni/util/PriviAction;
.super Ljava/lang/Object;
.source "PriviAction.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final GET_SECURITY_POLICY:I = 0x2

.field private static final GET_SECURITY_PROPERTY:I = 0x4

.field private static final GET_SYSTEM_PROPERTY:I = 0x1

.field private static final SET_ACCESSIBLE:I = 0x3


# instance fields
.field private action:I

.field private arg1:Ljava/lang/Object;

.field private arg2:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 70
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 72
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .parameter "action"
    .parameter "arg"

    .prologue
    .line 60
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 62
    iput-object p2, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "property"

    .prologue
    .line 98
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 100
    iput-object p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "property"
    .parameter "defaultAnswer"

    .prologue
    .line 114
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 116
    iput-object p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 117
    iput-object p2, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg2:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/AccessibleObject;)V
    .registers 3
    .parameter "object"

    .prologue
    .line 84
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    .line 86
    iput-object p1, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public static getSecurityProperty(Ljava/lang/String;)Ljava/security/PrivilegedAction;
    .registers 3
    .parameter "property"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/PrivilegedAction",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lorg/apache/harmony/luni/util/PriviAction;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/apache/harmony/luni/util/PriviAction;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    iget v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->action:I

    packed-switch v0, :pswitch_data_2c

    .line 137
    .end local p0           #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    :goto_5
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 129
    .restart local p0       #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    :pswitch_7
    iget-object v0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg2:Ljava/lang/Object;

    .end local p0           #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 131
    .restart local p0       #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    :pswitch_14
    iget-object p0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .end local p0           #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 133
    .restart local p0       #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    :pswitch_1d
    invoke-static {}, Ljava/security/Policy;->getPolicy()Ljava/security/Policy;

    move-result-object v0

    goto :goto_6

    .line 135
    :pswitch_22
    iget-object p0, p0, Lorg/apache/harmony/luni/util/PriviAction;->arg1:Ljava/lang/Object;

    .end local p0           #this:Lorg/apache/harmony/luni/util/PriviAction;,"Lorg/apache/harmony/luni/util/PriviAction<TT;>;"
    check-cast p0, Ljava/lang/reflect/AccessibleObject;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_5

    .line 127
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1d
        :pswitch_22
        :pswitch_14
    .end packed-switch
.end method
