import sys

from absl import flags
from absl.testing import absltest
from absl.testing import parameterized

from pysc2.agents import base_agent
from pysc2.env import run_loop, sc2_env
from pysc2.tests import utils


# Pysc2 uses absl.flags not gflags.
FLAGS = flags.FLAGS
FLAGS(sys.argv)


class TestSetup(parameterized.TestCase, utils.TestCase):

    @parameterized.named_parameters(
        ("features", sc2_env.AgentInterfaceFormat(
            feature_dimensions=sc2_env.Dimensions(screen=84, minimap=64))),
        ("rgb", sc2_env.AgentInterfaceFormat(
            rgb_dimensions=sc2_env.Dimensions(screen=128, minimap=64))),
        ("all", sc2_env.AgentInterfaceFormat(
            feature_dimensions=sc2_env.Dimensions(screen=84, minimap=64),
            rgb_dimensions=sc2_env.Dimensions(screen=128, minimap=64),
            action_space=sc2_env.ActionSpace.FEATURES,
            use_feature_units=True)),
    )
    def test_basic_agent(self, agent_interface_format):
        steps = 50
        step_mul = 8
        with sc2_env.SC2Env(
                map_name="Simple64",
                agent_interface_format=agent_interface_format,
                step_mul=step_mul,
                game_steps_per_episode=steps * step_mul) as env:
            agent = base_agent.BaseAgent()
            run_loop.run_loop([agent], env, steps)

        self.assertEqual(agent.steps, steps)


if __name__ == "__main__":
    absltest.main()
