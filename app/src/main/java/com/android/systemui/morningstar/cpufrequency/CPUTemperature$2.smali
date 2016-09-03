.class Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;
.super Landroid/content/BroadcastReceiver;
.source "CPUTemperature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private screenOn:Z

.field final synthetic this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;


# direct methods
.method constructor <init>(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;->screenOn:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;->screenOn:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;->screenOn:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "update_alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;->screenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature$2;->this$0:Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;

    # invokes: Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->updateTemperature()V
    invoke-static {v0}, Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;->access$100(Lcom/android/systemui/morningstar/cpufrequency/CPUTemperature;)V

    goto :goto_0
.end method
