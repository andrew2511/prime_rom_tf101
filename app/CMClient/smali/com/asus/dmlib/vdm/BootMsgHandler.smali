.class public interface abstract Lcom/asus/dmlib/vdm/BootMsgHandler;
.super Ljava/lang/Object;
.source "BootMsgHandler.java"


# static fields
.field public static final ADDR_TYPE_HTTP:I = 0x1

.field public static final ADDR_TYPE_OBEX:I = 0x3

.field public static final ADDR_TYPE_WSP:I = 0x2


# virtual methods
.method public abstract getAddrType(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)I
.end method

.method public abstract getNss(Lcom/asus/dmlib/vdm/SessionInitiator;)Ljava/lang/String;
.end method

.method public abstract getPin(Lcom/asus/dmlib/vdm/SessionInitiator;)V
.end method
