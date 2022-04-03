extends Node


var dialog_number = 0

# avatar 0: nothing
# avatar 1: alien
# avatar 2: noise
# avatar 3: operator


func _ready():
	pass


func _process(delta):
	pass


func get_dialog(dialog_number):
	var dialog_text = [""]
	
	match(dialog_number):
		1:
			dialog_text = ["Hey. This is Nick from the operational.", "We have detected the meteorite aiming for the Earth.", "Not the fastest one. Can your department take care of it?", "You have enough funding for that. So just buy what you need and get cracking. Thanks!"]
		2:
			dialog_text = ["RIRrTws4W2E4p22JeBS6ISvil8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUdEXsNgN88YxYi53LTX0plXMbR57", "8mH7ExtXPCgBPMARopBLHLy80xnDzJMGj6NRDmctX89QRHuXNoTQ6KmsB82EHoioaXd9FUd"]
		3:
			dialog_text = ["H 3lXo, c  4Rlhl  1NSs.  p0 A0u  _E 4.?", "H _1l o0,  eArt hL 1n __-s, do   yo u  re ad?", "The si gnal s hould be correct now."]
		4:
			dialog_text = ["Your planet seemed to get in a way to our new great project.", "Our corporation is truly sorry about that. You need to understand that this had been a difficult decision for us.", "Thankfully, there is no need for action from your side; everything is planned into the smallest details.", "Thank you for understanding and for your cooperation."]
		5:
			dialog_text = ["Something is jamming my communication.", "What is going on?", "Are you alright?"]
		6:
			dialog_text = ["ul2QHtdBMK488lNXxiDsLvpoR8xEERe6H432PXmTH7EIB5jNJBNXM8cXm8oJ2pigaSI60HBQYA5sSLxR6nXtGgiNL9CXrWwR2UTRoX7M0TDoFpsbzP89yEYRdm", "NuxE72jiQQA6HRMtm8JoRyH6pK9nHR8BNPmxt0LDo9CdLUPEXMFXX8BDBc8zsXGdmoagHTo"]
		7:
			dialog_text = ["I don’t like what’s going on. We increased your funding. Give it hell!"]
		8:
			dialog_text = ["Dear... Sir or Madam, it seems that you are not fully able to comprehend the goal of our mission.", "You seem to understand the meaning and the value of time, and you can certainly understand that it is being wasted here.", "This means that we have prioritised the speed of our operation. Thank you for your understanding."]
		9:
			dialog_text = ["Hey! The satisfaction of all customers is very important to us. Since it is our responsibility to ensure the success of the mission,", "we will assign you the agent that can help you with all of your complaints and suggestions."]
		10:
			dialog_text = ["Hey, operations here. I can’t hear you. What the hell is goin g o no nnnn?", "mQN8EjdoXRi9oc6KUDdaHsXTHBoQmRNXut29F86"]
		11:
			dialog_text = ["Sorry for the interruption. It had been taken care of."]
		12:
			dialog_text = ["My name is Gah Luraveolaklep and I will be your agent today.", "It seems that you are not really understanding when it comes to our project.", "Let me explain it to you."]
		13:
			dialog_text = ["Hey, got the connection back. We urged the rest of the agencies and they see what’s up.", "We are sending more resources your way."]
		14:
			dialog_text = ["The project of the intergalactic highway has been a dream of us for generations.", "It will connect all Kencax, Qhergeit and Bhaczmut beings."]
		15:
			dialog_text = ["While we understand being upset about your planet being destroyed, it is a price we are willing to pay."]
		16:
			dialog_text = ["Just between us - Earth seemed pretty fine.", "You people definitely know how to life.", "If you have enough money, that is."]
		17:
			dialog_text = ["We are focused purely on the efficacy. We do not have time to relax."]
		18:
			dialog_text = ["See? We are so efficient, I can just press a button.", "Just like that. And it goes wheeeeeeeee!"]
		19:
			dialog_text = ["I have to admit, that I am having a lot of fun though.", "Sure, I cannot hear you, but it feel like we’re connected somehow anyway."]
		20:
			dialog_text = ["Hey! They are jamming our communications.", "We poured all of the funds we have for you. Blow them to pieces!"]
		21:
			dialog_text = ["Too bad I couldn’t meet you in person. You seem like a great human. And capable, wow!", "I am..."]
		22:
			dialog_text = ["I am...", "I...", "You know, I am lonely here."]
		23:
			dialog_text = ["Sorry I was so hard on you. You seem to be doing your best.", "It’s not really fair."]
		24:
			dialog_text = ["Don’t listen to them! It’s a trick! Fire, fire!"]
		25:
			dialog_text = ["Trick? Trick?! I will show you the trick."]
		26:
			dialog_text = ["How do you like that?"]
		27:
			dialog_text = ["Got you scared there, huh?"]
		28:
			dialog_text = ["Not so tough now."]
		29:
			dialog_text = ["Sorry, sorry, sorry. I’m so sorry.", "I love you, you know?"]
		30:
			dialog_text = ["Push, push, push! Go! Go! Go!"]
		31:
			dialog_text = ["Please don’t ever leave me. I am so lonely here."]
		32:
			dialog_text = ["Do you know how hard this is? Just to watch planets being destroyed all the time?"]
		33:
			dialog_text = ["But... I must continue. This must go on."]
		34:
			dialog_text = ["Diiieee! Diiiiiiieeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee"]
		35:
			dialog_text = ["We’re able to give you even more funds. Fight like there is no tomorrow!"]
		36:
			dialog_text = ["Fight llli ii ekkk", "Finally cut your operator off completely."]
		37:
			dialog_text = ["Now nobody will get between us. We will be together forever."]
		38:
			dialog_text = ["I love you."]
		39:
			dialog_text = ["Don’t leave me, I love you."]
		40:
			dialog_text = ["8HmtmQBdiT8XENoRKDdHo9oNUFXjQ66Xcs29Rua"]
		41:
			dialog_text = ["RX6KDm8XsN9cmiHU9jNXFuQHooE2BatRQ86Toddagent neutralized."]
		42:
			dialog_text = ["Dear Sir or Madam, We have noticed the unusual and unprofessional behavior of one of our employess.", "We want to assure you that the corrective measures were taken and this in no way represents the values of our company.", "Due to the unexpected delay in our operation, we are prioritizing our mission now.", "Have a wonderful day!"]
		
	GameState.play_sound("new_message")
	return dialog_text


func get_dialog_avatar(dialog_number):
	var dialog_avatars = [1, 1]
	
	match(dialog_number):
		1:
			dialog_avatars = [3, 3, 3, 3]
		2:
			dialog_avatars = [2, 2]
		3:
			dialog_avatars = [1, 1, 1]
		4:
			dialog_avatars = [1, 1, 1, 1]
		5:
			dialog_avatars = [3, 3, 3]
		6:
			dialog_avatars = [2, 2]
		7:
			dialog_avatars = [3]
		8:
			dialog_avatars = [1, 1, 1]
		9:
			dialog_avatars = [1, 1]
		10:
			dialog_avatars = [3, 3]
		11:
			dialog_avatars = [1]
		12:
			dialog_avatars = [1, 1, 1]
		13:
			dialog_avatars = [3, 3]
		14:
			dialog_avatars = [1, 1]
		15:
			dialog_avatars = [1]
		16:
			dialog_avatars = [1, 1, 1]
		17:
			dialog_avatars = [1]
		18:
			dialog_avatars = [1, 1]
		19:
			dialog_avatars = [1, 1]
		20:
			dialog_avatars = [3, 3]
		21:
			dialog_avatars = [1, 1]
		22:
			dialog_avatars = [1, 1, 1]
		23:
			dialog_avatars = [1, 1]
		24:
			dialog_avatars = [3]
		25:
			dialog_avatars = [1]
		26:
			dialog_avatars = [1]
		27:
			dialog_avatars = [1]
		28:
			dialog_avatars = [1]
		29:
			dialog_avatars = [1, 1]
		30:
			dialog_avatars = [3]
		31:
			dialog_avatars = [1]
		32:
			dialog_avatars = [1]
		33:
			dialog_avatars = [1]
		34:
			dialog_avatars = [1]
		35:
			dialog_avatars = [3]
		36:
			dialog_avatars = [3, 1]
		37:
			dialog_avatars = [1]
		38:
			dialog_avatars = [1]
		39:
			dialog_avatars = [1]
		40:
			dialog_avatars = [2]
		41:
			dialog_avatars = [2]
		42:
			dialog_avatars = [1, 1, 1, 1]


	return dialog_avatars
